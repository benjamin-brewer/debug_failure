# DebugFailure

This is a quick example of IntelliJ Elixir's debug erroring when starting an application that has the `opentelemetry_exporter` dependency.
Ultimately, the failure is in the `tls_certificate_check` library used by that.

## Reproduction

- Run the `mix run` "IEx Mix" configuration in Run mode to confirm it presents an IEx prompt.
- Run the `mix run` "IEX Mix" configuration in Debug mode to confirm that it errors out and stops running.

## Error Message excerpt

```elixir
** (Mix) Could not start application tls_certificate_check: :tls_certificate_check_app.start(:normal, []) returned an error: shutdown: failed to start child: :tls_certificate_check_shared_state
    ** (EXIT) an exception was raised:
        ** (FunctionClauseError) no function clause matching in anonymous fn/4 in :tls_certificate_check_shared_state.canonical_shared_state_representation/1
            (tls_certificate_check 1.20.0) tls_certificate_check_shared_state.erl:425: anonymous fn([{:clause, 425, [{:tuple, 425, [{:value, 425, 1}, {:var, 425, :RecordTag}]}], [], [{:var, 426, :RecordTag}]}, {:clause, 427, [{:tuple, 427, [{:integer, {427, 13}, 2}, {:var, 427, :AuthoritativeCertificateValues}]}], [], [{:var, 432, :AuthoritativeCertificateValues}]}, {:clause, 433, [{:tuple, 433, [{:integer, {433, 13}, 3}, {:var, 433, :TrustedPublicKeys}]}], [], [{:call_remote, 437, :lists, :sort, [{:call_remote, 437, :maps, :to_list, [{:var, 437, :TrustedPublicKeys}], false}], true}]}]...
```