import { registerPlugin } from '@capacitor/core';

import type { InjectorPlugin } from './definitions';

const Injector = registerPlugin<InjectorPlugin>('Injector', {
  web: () => import('./web').then((m) => new m.InjectorWeb()),
});

export * from './definitions';
export { Injector };
