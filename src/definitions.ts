export interface InjectorPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
