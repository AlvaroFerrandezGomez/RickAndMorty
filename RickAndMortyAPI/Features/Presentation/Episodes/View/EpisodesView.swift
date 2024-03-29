//
//  EpisodesView.swift
//  RickAndMortyAPI
//
//  Created by Álvaro Ferrández Gómez on 3/1/24.
//

import UIKit

// MARK: - EpisodesView

final class EpisodesView: RMBaseViewController<EpisodesCoordinator> {
    weak var episodesCoordinator: EpisodesCoordinator?

    var viewModel = DefaultEpisodesViewModel()

    private(set) var tableView: UITableView = {
        let tableView = UITableView(frame: .zero)
        tableView.translatesAutoresizingMaskIntoConstraints = false

        return tableView
    }()

    private lazy var tableViewDataSource: EpisodesViewDatasource = {
        let datasource = EpisodesViewDatasource(tableView: tableView,
                                                viewModel: viewModel)
        datasource.registerCells()
        return datasource
    }()

    private lazy var tableViewDelegate: EpisodesViewDelegate = {
        let delegate = EpisodesViewDelegate(tableView: tableView,
                                            viewModel: viewModel)
        return delegate
    }()

    // MARK: - Lifecycle methods

    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
        setupBinding()

        viewModel.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupNavigationTitle()
    }

    // MARK: - Setup view method

    private func setupView() {
        view.backgroundColor = .white

        setupTableView()
    }

    private func setupTableView() {
        view.addSubview(tableView)

        tableView.backgroundColor = .clear
        tableView.dataSource = tableViewDataSource
        tableView.delegate = tableViewDelegate
        tableView.showsVerticalScrollIndicator = false
        tableView.rowHeight = Constants.defaultRowHeight
        tableView.separatorStyle = .none

        setupTableViewConstraints()
    }

    // MARK: - Setup view method

    private func setupNavigationTitle() {
        navigationItem.title = Constants.title
    }

    // MARK: - Binding method

    func setupBinding() {
        viewModel.loadingStatus.bind { [weak self] status in
            guard let self = self,
                  let status = status else { return }

            switch status {
            case .start:
                self.showSpinner()
            case .stop:
                self.hideSpinner()
            }
        }

        viewModel.error.bind { [weak self] error in
            guard let self = self,
                  let error = error else { return }

            self.episodesCoordinator?.showError(error: error)
        }

        viewModel.model.bind { [weak self] model in
            guard let self = self,
                  let _ = model else { return }

            self.reloadView()
        }
    }

    private func reloadView() {
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
}
