from mlc import utils
import os

def preprocess(i):

    os_info = i['os_info']

    env = i['env']

    meta = i['meta']

    automation = i['automation']

    quiet = (env.get('MLC_QUIET', False) == 'yes')

    cmd = f"""bash {os.path.join(env['MLC_TMP_CURRENT_SCRIPT_PATH'], "upload_release.sh") }"""

    env['MLC_RUN_CMD'] = cmd

    return {'return':0}

def postprocess(i):

    env = i['env']

    return {'return':0}
