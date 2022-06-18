import { NukeLazyMeofView } from 'nuke-lazy-meof';
import * as React from 'react';
import { StyleSheet, View } from 'react-native';

export default function App() {
  // scaleToFill = 0
  // scaleAspectFit = 1 // contents scaled to fit with fixed aspect. remainder is transparent
  // scaleAspectFill = 2 // contents scaled to fill with fixed aspect. some portion of content may be clipped.
  // redraw = 3 // redraw on bounds change (calls -setNeedsDisplay)
  // center = 4 // contents remain same size. positioned adjusted.
  // top = 5
  // bottom = 6
  // left = 7
  // right = 8
  // topLeft = 9
  // topRight = 10
  // bottomLeft = 11
  // bottomRight = 12
  return (
    <View style={styles.container}>
      <NukeLazyMeofView
        uri="https://picsum.photos/200/200"
        style={styles.box}
        resizeMode="scaleAspectFill"
      />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
  box: {
    borderRadius: 20,
    width: 300,
    height: 300,
  },
});
