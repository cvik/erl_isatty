## erl_isatty - Erlang NIF wrapper for unix 'int isatty(int)'

## Spec
```erlang
-spec isatty(FD::integer()) -> boolean().
```

Will crash with `badarg` if `FD` is not integer() between `-2 bsl 30` and `+2 bsl 30-1`.

## Example usage

```erlang
erl_isatty:isatty(1). % -> true
```

## License

Apache license version 2.0. See the LICENSE file for details.
