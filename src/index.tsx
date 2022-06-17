import {
  requireNativeComponent,
  UIManager,
  Platform,
  ViewStyle,
} from 'react-native';

const LINKING_ERROR =
  `The package 'nuke-lazy-meof' doesn't seem to be linked. Make sure: \n\n` +
  Platform.select({ ios: "- You have run 'pod install'\n", default: '' }) +
  '- You rebuilt the app after installing the package\n' +
  '- You are not using Expo managed workflow\n';

type NukeLazyMeofProps = {
  color: string;
  style: ViewStyle;
};

const ComponentName = 'NukeLazyMeofView';

export const NukeLazyMeofView =
  UIManager.getViewManagerConfig(ComponentName) != null
    ? requireNativeComponent<NukeLazyMeofProps>(ComponentName)
    : () => {
        throw new Error(LINKING_ERROR);
      };
