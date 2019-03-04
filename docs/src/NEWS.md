# MLJ News 

Development news for MLJ and its satellite packages, 
[MLJBase](https://github.com/alan-turing-institute/MLJBase.jl),
[MLJRegistry](https://github.com/alan-turing-institute/MLJRegistry.jl)
and [MLJModels](https://github.com/alan-turing-institute/MLJModels.jl)

### unversioned commits 1 March 2019 (some time after 03:50 GMT)

- Addition of "scientific type" hierarchy, including `Continuous`,
  `Discrete`, `Multiclass`, and `Other` subtypes of `Found` (to
  complement `Missing`). See
  new documents [Getting Started](doc/gettting_started.md) and
  [Scientific Data Types](doc/scientific_data_types.md) for more one
  this.  Resolves: [#86](https://github.com/alan-turing-institute/MLJ.jl/issues/86)

- Revamp of model traits to take advantage of scientific types, with
  `output_kind` replaced with `target_scitype`, `input_kind` replaced
  with `input_scitype`. Also, `output_quantity` dropped,
  `input_quantity` replaced with `Bool`-valued
  `input_is_multivariate`, and `is_pure_julia` made `Bool`-valued.
  Trait definitions in all model implementations and effected
  meta-algorithms have been updated. Related:
  [#81](https://github.com/alan-turing-institute/MLJ.jl/issues/81)
  
- Substantial update of the core guide [Adding New
  Models](doc/adding_new_models.md) to reflect above changes and in
  response to new model implementer queries. Some design "decisions"
  regarding multivariate targets now explict there.

- the order the `y` and `yhat` arguments of measures (aka loss
  functions) have been reversed. Progress on:
  [#91](https://github.com/alan-turing-institute/MLJ.jl/issues/91)
  
- Update of Standardizer and OneHotEncoder to mesh with new scitypes.

- New improved task constructors infer task metadata from data
  scitypes. This brings us close to a simple implementation of basic
  task-model matching. Query the doc-strings for `SupervisedTask` and
  `UnsupervisedTask` for details.  Machines can now dispatch on tasks
  instead of `X` and `y`. A task, `task`, is now callable: `task()`
  returns `(X, y)` for supervised models, and `X` for unsupervised
  models.  Progress on:  [\#86](https://github.com/alan-turing-institute/MLJ.jl/issues/68)

- the data in the `load_ames()` test task has been replaced by the
  full data set, and `load_reduced_ames()` now loads a reduced set.



