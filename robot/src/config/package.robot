*** Settings ***
Documentation    Dependency manager for automation tests

## Libraries ##
Library    SeleniumLibrary
Library    Collections

## Test Data ##
Resource    ../auto/fixtures/test_data.robot

## Keywords ##
Resource    ../auto/keywords/step-by-step/register_keywords.robot
Resource    ../auto/keywords/bdd/keywords.robot

## Pages ##
Resource    ../auto/pages/home_page.robot
Resource    ../auto/pages/login_page.robot
Resource    ../auto/pages/signup_page.robot
Resource    ../auto/pages/context_page.robot

## Hooks ##
Resource    hooks.robot