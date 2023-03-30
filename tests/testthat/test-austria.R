
test_that("austria is properly formatted", {
  data(austria)
  # correct type
  expect_type(austria, "list")
  expect_s3_class(austria, c("sf","tbl_df", "tbl", "data.frame"))
  # correct dimensions
  expect_equal(dim(austria), c(9, 12))
  # correct column names
  expect_named(austria, c("ID_0", "COUNTRY", "ID_1", "NAME_1", "VARNAME_1", "NL_NAME_1", "TYPE_1", "ENGTYPE_1", "CC_1", "HASC_1", "ISO_1", "geometry"))
})
