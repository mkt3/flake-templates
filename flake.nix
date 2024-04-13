{
  description = "A collection of project templates";
  outputs = {...}: {
    templates = {
      python = {
        path = ./python;
        description = "Python project";
      };
    };
  };
}
