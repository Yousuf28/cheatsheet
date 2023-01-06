create .lintr file with `lintr::use_lintr()`  
this will generate  .lintr file with following code already. 
```
linters: linters_with_defaults()
```
add this options as agrs
```
 line_length_linter(120),
  cyclocomp_linter = NULL,
  object_name_linter = NULL,
  object_usage_linter = NULL
  ```
 final 
 ```
 linters: linters_with_defaults(
 line_length_linter(120),
  cyclocomp_linter = NULL,
  object_name_linter = NULL,
  object_usage_linter = NULL)
  ```
 
  ###
  .lintr file can be put in individual  project folder or  in user folder for global action
 - can be further customize
 - [lintr](https://lintr.r-lib.org/reference/linters.html)
