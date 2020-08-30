import { NativeModules } from 'react-native';

type LastlastModuleType = {
  multiply(a: number, b: number): Promise<number>;
};

const { LastlastModule } = NativeModules;

export default LastlastModule as LastlastModuleType;
