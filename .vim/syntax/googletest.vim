" Vim syntax file
" Name: googletest.vim (syntax)
" Description: Syntax highlighting for googletest in C++
" Version: 1.0
" Author: Ciaran McCreesh <ciaran.mccreesh at googlemail.com>
" Updates: http://github.com/ciaranm/googletest-syntax
"
" License: You may redistribute this plugin under the same terms as Vim
" itself.

if &compatible || v:version < 700
  finish
else
  runtime! syntax/cpp.vim
endif

syn keyword GoogleTestSpecial
\ SUCCEED FAIL ADD_FAILURE ADD_FAILURE_AT SCOPED_TRACE FRIEND_TEST RUN_ALL_TESTS

syn keyword GoogleTestAssert
\ ASSERT_TRUE ASSERT_FALSE
\ ASSERT_EQ ASSERT_NE ASSERT_LT ASSERT_LE ASSERT_GT ASSERT_GE
\ ASSERT_STREQ ASSERT_STRNE ASSERT_STRCASEEQ ASSERT_STRCASENE
\ ASSERT_THROW ASSERT_ANY_THROW ASSERT_NO_THROW
\ ASSERT_PRED1 ASSERT_PRED2 ASSERT_PRED3 ASSERT_PRED4 ASSERT_PRED5
\ ASSERT_PRED_FORMAT1 ASSERT_PRED_FORMAT2 ASSERT_PRED_FORMAT3 ASSERT_PRED_FORMAT4 ASSERT_PRED_FORMAT5
\ ASSERT_FLOAT_EQ ASSERT_DOUBLE_EQ ASSERT_NEAR
\ ASSERT_HREF_SUCCEEDED ASSERT_HREF_FAILED
\ ASSERT_DEATH ASSERT_DEATH_IF_SUPPORTED ASSERT_EXIT
\ ASSERT_NO_FATAL_FAILURE

syn keyword GoogleTestExpect
\ EXPECT_TRUE EXPECT_FALSE
\ EXPECT_EQ EXPECT_NE EXPECT_LT EXPECT_LE EXPECT_GT EXPECT_GE
\ EXPECT_STREQ EXPECT_STRNE EXPECT_STRCASEEQ EXPECT_STRCASENE
\ EXPECT_THROW EXPECT_ANY_THROW EXPECT_NO_THROW
\ EXPECT_PRED1 EXPECT_PRED2 EXPECT_PRED3 EXPECT_PRED4 EXPECT_PRED5
\ EXPECT_PRED_FORMAT1 EXPECT_PRED_FORMAT2 EXPECT_PRED_FORMAT3 EXPECT_PRED_FORMAT4 EXPECT_PRED_FORMAT5
\ EXPECT_FLOAT_EQ EXPECT_DOUBLE_EQ EXPECT_NEAR
\ EXPECT_HREF_SUCCEEDED EXPECT_HREF_FAILED
\ EXPECT_DEATH EXPECT_DEATH_IF_SUPPORTED EXPECT_EXIT
\ EXPECT_NO_FATAL_FAILURE
\ EXPECT_FATAL_FAILURE EXPECT_NONFATAL_FAILURE
\ EXPECT_FATAL_FAILURE_ON_ALL_THREADS EXPECT_NONFATAL_FAILURE_ON_ALL_THREADS

syn keyword GoogleTestDecl
\ TEST TEST_F TEST_P TYPED_TEST_CASE TYPED_TEST_CASE_P

syn keyword GoogleTestInstantiation
\ INSTANTIATE_TEST_CASE_P REGISTER_TYPED_TEST_CASE_P INSTANTIATE_TYPED_TEST_CASE_P

syn keyword GoogleMockMacro
\ EXPECT_CALL
\ ON_CALL

syn keyword GoogleMockMatcher
\ MATCHER MATCHER_P MATCHER_P2
\ ACTION ACTION_P ACTION_P2 ACTION_P3 ACTION_P4 ACTION_P5 ACTION_P6 ACTION_P7 ACTION_P8 ACTION_P9

syn keyword GoogleMockFunction
\ WillByDefault Times WillOnce WillRepeatedly

syntax match GoogleMockTesting /\(\:\:\)\?testing\:\:\w\+/

hi def link GoogleTestSpecial Special
hi def link GoogleTestAssert Macro
hi def link GoogleTestExpect Macro
hi def link GoogleTestDecl Operator
hi def link GoogleTestInstantiation Statement
hi def link GoogleMockMacro Macro
hi def link GoogleMockFunction Function
hi def link GoogleMockTesting Identifier
hi def link GoogleMockMatcher Operator

let b:current_syntax = 'googletest'

