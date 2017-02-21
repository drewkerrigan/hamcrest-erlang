defmodule Hamcrest.Mixfile do
  use Mix.Project

  @version File.read!("VERSION") |> String.strip

  def project do
    [app: :hamcrest,
     version: @version,
     description: "Erlang port of Hamcrest",
     package: package(),
     deps: deps()]
  end

  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end

  defp package do
    [files: ~w(ebin/hamcrest.app include priv src test INSTALL LICENCE Makefile NOTES README.markdown rebar.config test.config TODO.md VERSION),
     maintainers: ["Tim Watson"],
     licenses: ["Copyright (c) 2010, Tim Watson"],
     links: %{"GitHub" => "https://github.com/hyperthunk/hamcrest-erlang"}]
  end
end
