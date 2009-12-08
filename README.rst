Aim
===
This project tries to convert vim in a python IDE adding some scripts and configurations.

Features
========

1. It uses 4 spaces instead of tabs
#. It shows an status line with the type of file, row, column and time
#. It shows the line numbers in a column
#. It shows the matches when performing a search and when the search is done
#. It indents the python code
#. It removes the trailing spaces every time the file is closed
#. It shows the pylint line suggestions, using it as a compiler
#. It highligts the characters above the column 80
#. It allows commenting and uncommenting for different file types.
#. It supports code folding

Pylint integration
==================

pylint is used as the compiler for the python files. The lines with problem will be showed in the quickfix window and as signs at the corresponding lines. The error list is updated everytime the file is saved.
The compiler used is a modified version from the original_ pylint vim compiler created by `Oleksandr Tymoshenko`_.

.. _original: http://www.vim.org/scripts/script.php?script_id=891
.. _Oleksandr Tymoshenko: http://www.vim.org/account/profile.php?user_id=4435

This pylint vim compiler takes the errors, warnings and comments made by pylint and it adds them to the vim quickfix_ list and to the signs_. The quickfix appears in a window on the bottom of the screen with the type of error, its number, its description and the line number. The signs appear in a column with a mark close to each line with problems: "EE" for errors, "WW" for warnings and "CC" for comments.

.. _quickfix: http://vimdoc.sourceforge.net/htmldoc/quickfix.html
.. _signs: http://vimdoc.sourceforge.net/htmldoc/sign.html

Every time the buffer is written to disc pylint is run and the problem lists is updated.

Mappings
========

+--------------+---------------------------------------------------+
| key mapping  | Action                                            |
+--------------+---------------------------------------------------+
| <ctrl-C>     | Comments a line or block                          |
+--------------+---------------------------------------------------+
| <ctrl-X>     | Uncomments a line or block                        |
+--------------+---------------------------------------------------+
| w F5         | Toogles the visibility of the quickfix window     |
+--------------+---------------------------------------------------+
| f            | Toogle folding                                    |
+--------------+---------------------------------------------------+

Pluggins used
=============
- Folding_
- Pylint_
- Comments_

.. _Folding: http://www.vim.org/scripts/script.php?script_id=1494
.. _Pylint: http://www.vim.org/scripts/script.php?script_id=891
.. _Comments: http://www.vim.org/scripts/script.php?script_id=1528

