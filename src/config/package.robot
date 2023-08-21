*** Settings ***
Documentation    Dependency manager for automation tests

## Libraries ##

Library    SeleniumLibrary

## Keywords ##
Resource    ../auto/keywords/step-by-step/register_keywords.robot

## Pages ##
Resource    ../auto/pages/home_page.robot
Resource    ../auto/pages/register_page.robot


## Hooks ##
Resource    hooks.robot