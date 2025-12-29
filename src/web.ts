import { WebPlugin } from '@capacitor/core';

import type { InjectorPlugin } from './definitions';

export class InjectorWeb extends WebPlugin implements InjectorPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
