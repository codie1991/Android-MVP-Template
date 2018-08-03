package ${packageName}


class ${moduleName}Presenter(
        private val view: ${moduleName}.View
) : ${moduleName}.Presenter {

    override fun fetchData() {
        TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
    }

    private fun updateView(state: ${moduleName}.ViewState) {
        if (view.isActive) {
            view.viewState = state
        }
    }

}
