{
  description = "A collection of project templates";
  outputs = {...}: {
    templates = {
      python = {
        path = ./python;
        description = "Python project";
      };
      minimal = {
        path = ./minimal;
        description = "Minimal project";
      };
    };
  };
}
