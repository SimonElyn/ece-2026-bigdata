# DBT lab

Ce projet génère un jeu de données aléatoire composé d'utilisateurs et de commandes. Les scripts sont écrits en Python et le projet utilise [uv](https://docs.astral.sh/uv/).

## Usage

```bash
uv run dataset_users.py -h
#> usage: User generator [-h] [-c COUNT] [-o {csv,json,jsonline}]

#> options:
#>   -h, --help            show this help message and exit
#>   -c, --count COUNT     Number of users to generate.
#>   -o, --output {csv,json,jsonline}
#>                         Output format.


