"""
Configuration file for pytest fixtures and hooks.
"""
import pytest
import pandas as pd

# Example fixture (can be removed or modified)


@pytest.fixture(scope="session")
def example_session_fixture():
    print("\nSetting up session fixture...")
    yield
    print("\nTearing down session fixture...")


@pytest.fixture()
def fixture_ds_1():
    """ Example of a fixture of one product """
    return pd.DataFrame({
        'no_nulls': [1, 2, 3, 4, 5],
        'has_nulls': [1, None, 3, None, 5],
        'no_empty': ['a', 'b', 'c', 'd', 'e'],
        'has_empty': ['a', '', 'c', '', 'e'],
        'no_duplicates': [1, 2, 3, 4, 5],
        'has_duplicates': [1, 2, 2, 3, 1]
    })
