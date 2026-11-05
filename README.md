# Homebrew tap for Barframe apps

This tap installs the free, open source Mac apps by Michael Lip. The source code is in [barframe-apps](https://github.com/theluckystrike/barframe-apps). The website is https://barframe.com/.

Each cask downloads the signed disk image from the GitHub release of the app. Apple notarized each app, and the app and the disk image both carry the notarization ticket. Each app needs macOS 14 Sonoma or later and runs on Apple silicon and Intel.

## Install

Homebrew 7 loads casks from a tap only after you trust the tap. Trust this tap one time:

```sh
brew trust --tap theluckystrike/barframe
```

Then install one app:

```sh
brew install --cask theluckystrike/barframe/<token>
```

For example:

```sh
brew install --cask theluckystrike/barframe/cacheslope
```

Update and remove an app:

```sh
brew upgrade --cask theluckystrike/barframe/<token>
brew uninstall --cask theluckystrike/barframe/<token>
```

To also remove the settings and data of an app, use `brew uninstall --zap --cask`.

## Apps

29 casks.

| App | What it does | Install |
|---|---|---|
| CacheSlope | Find folders that keep growing | `brew install --cask theluckystrike/barframe/cacheslope` |
| CallReady | Next call, mic guard and mute key | `brew install --cask theluckystrike/barframe/callready` |
| CaptionCove | Check subtitle delivery parity | `brew install --cask theluckystrike/barframe/captioncove` |
| CheckHarbor | Track builds until recovery | `brew install --cask theluckystrike/barframe/checkharbor` |
| ColumnLatch | Check recurring CSV imports | `brew install --cask theluckystrike/barframe/columnlatch` |
| CostBar | AI API cost & budget monitor | `brew install --cask theluckystrike/barframe/costbar` |
| CronSpindle | Find schedule collisions | `brew install --cask theluckystrike/barframe/cronspindle` |
| EnvTrellis | Check environment readiness | `brew install --cask theluckystrike/barframe/envtrellis` |
| HashDock | Verify every delivery copy | `brew install --cask theluckystrike/barframe/hashdock` |
| Headroom Agent Memory | Memory pressure & swap budget | `brew install --cask theluckystrike/barframe/headroom` |
| HushKey Mic Mute Hotkey | Hold to talk, release to mute | `brew install --cask theluckystrike/barframe/hushkey` |
| KeyOverlap | Check shortcut plan conflicts | `brew install --cask theluckystrike/barframe/keyoverlap` |
| LinkSprig | Preview broken document links | `brew install --cask theluckystrike/barframe/linksprig` |
| MarkShot Screenshot Markup | Arrows, annotations and steps | `brew install --cask theluckystrike/barframe/markshot` |
| MeetNext | Meeting countdown & timeline | `brew install --cask theluckystrike/barframe/meetnext` |
| MicAnchor | Default mic priority keeper | `brew install --cask theluckystrike/barframe/micanchor` |
| NameWeave | Check filename portability | `brew install --cask theluckystrike/barframe/nameweave` |
| NativeLedger | Automatic app update ledger | `brew install --cask theluckystrike/barframe/nativeledger` |
| PageParcel | Plan duplex document packets | `brew install --cask theluckystrike/barframe/pageparcel` |
| PermitPeek | See app permission changes | `brew install --cask theluckystrike/barframe/permitpeek` |
| PortSense | Charger wattage & USB devices | `brew install --cask theluckystrike/barframe/portsense` |
| QuotaPace | Token pace & usage limits | `brew install --cask theluckystrike/barframe/quotapace` |
| RelayNook | Coding agent alerts & hooks | `brew install --cask theluckystrike/barframe/relaynook` |
| ReminderVault | Markdown tasks and reminders | `brew install --cask theluckystrike/barframe/remindervault` |
| RevPulse Revenue at a Glance | Net payments in your menu bar | `brew install --cask theluckystrike/barframe/revpulse` |
| RouteLoom Connection Report | Compare connection failures | `brew install --cask theluckystrike/barframe/routeloom` |
| ShelfDock | Drag & drop file staging | `brew install --cask theluckystrike/barframe/shelfdock` |
| Starglass Night Sky Planner | Cloud and moon night planner | `brew install --cask theluckystrike/barframe/starglass` |
| StepQuay | Resume your next small task | `brew install --cask theluckystrike/barframe/stepquay` |

Frit, the glaze recipe book, is not in this tap yet. Download it from https://github.com/theluckystrike/frit/releases.

CallReady and MicAnchor use the same settings folder. If you zap one of them, the settings of the other go too.

## Support this work

These apps are free. If one saves you time, you can support more of them: [GitHub Sponsors](https://github.com/sponsors/theluckystrike) · [PayPal](https://paypal.me/najzzz) · [Buy Me a Coffee](https://buymeacoffee.com/michaellip)

## License

MIT. See [LICENSE](LICENSE). Each app has its own MIT License in [barframe-apps](https://github.com/theluckystrike/barframe-apps).
