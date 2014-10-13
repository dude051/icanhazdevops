# icanhazdevops-cookbook

DESIGND SIET

## Example Berkshelf Deploy

```
berks install
berks upload
```

## Example Knife Rackspace Command

```
knife rackspace server create -A 'USERNAME' -K 'APIKEY' -I 'ea322e55-0a03-48d6-b812-d9cf77fd05e7' -f 'performance1-1' --rackspace-region 'IAD' -E stage -r 'role[icanhaz]' --bootstrap-version latest --no-tcp-test-ssh --ssh-wait-timeout 15
```

## Supported Platforms

- Ubuntu 10.04, 12.04
- Debian Wheezy
- CentOS/RHEL 5,6
- CHEEZEBURGERS

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['icanhazdevops']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### icanhazdevops::default

Include `icanhazdevops` in your node's `run_list` and your distro specific package cookbook:

Ubuntu/Debian
```json
{
  "run_list": [
    "recipe[apt]",
    "recipe[icanhazdevops::default]"
  ]
}
```
RHEL/Debian
```json
{
  "run_list": [
    "recipe[yum]",
    "recipe[icanhazdevops::default]"
  ]
}
```

## License and Authors

Author:: Justin Seubert (<justin.seubert@rackspace.com>)
