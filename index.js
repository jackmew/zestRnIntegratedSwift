'use strict';

import React from 'react';
import {
  AppRegistry,
  StyleSheet,
  Text,
  View
} from 'react-native';

class ZestRnIntegratedSwift extends React.Component {
  render() {
    console.log(this.props["dices"]);
    return (
      <View style={styles.container}>
        <Text style={styles.highScoresTitle}>
          Dice ~
        </Text>
        <Text style={styles.scores}>
            {
                this.props["dices"].map(
                    dice => <Text key={dice.name}>{dice.name}:{dice.value}{"\n"}</Text>
                )
            }
        </Text>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#FFFFFF',
  },
  highScoresTitle: {
    fontSize: 20,
    textAlign: 'center',
    margin: 10,
  },
  scores: {
    textAlign: 'center',
    color: '#333333',
    marginBottom: 5,
  },
});

// Module name
AppRegistry.registerComponent('ZestRnIntegratedSwift', () => ZestRnIntegratedSwift);
