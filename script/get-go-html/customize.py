from mlc import utils
import os
import subprocess


def preprocess(i):

    env = i['env']
    state = i['state']

    os_info = i['os_info']

    env['MLC_RUN_CMD'] = f"""rclone sync go-pdfs-html: {env['MLC_GO_PDFS_HTML_ROOT']}"""
    return {'return': 0}


def postprocess(i):

    env = i['env']
    state = i['state']

    env['MLC_DEPENDENT_CACHED_PATH'] = env['MLC_GO_PDFS_HTML_ROOT']

    os_info = i['os_info']

    return {'return': 0}
