package ${packageName}

class ${moduleName} {

    interface View {
        var isActive: Boolean
        var viewState: ViewState
    }

    interface Presenter {
        fun fetchData()
    }

    sealed class ViewState {
        class Data(val viewModel: ${moduleName}ViewModel) : ViewState()
        class Loading : ViewState()
        class Empty : ViewState()
        class Error(val errorMessage: String) : ViewState()
    }

}
