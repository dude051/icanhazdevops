# icanhazdevops-cookbook

DESIGND SIET

## Supported Platforms

Ubuntu 10.04, 12.04
Debian Wheezy
CentOS/RHEL 5,6
CHEEZEBURGERS

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

Include `icanhazdevops` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[icanhazdevops::default]"
  ]
}
```

## License and Authors

Author:: Justin Seubert (<justin.seubert@rackspace.com>)
