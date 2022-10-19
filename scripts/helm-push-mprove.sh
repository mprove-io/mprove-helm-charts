export CHART_VERSION=$(grep 'version:' ./mprove/Chart.yaml | tail -n1 | awk '{ print $2 }') \
  && helm push mprove-${CHART_VERSION}.tgz oci://ghcr.io/mprove-io/mprove-helm-charts \
  && rm -rf mprove-${CHART_VERSION}.tgz

