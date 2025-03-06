import os

def preprocess(i):

    os_info = i['os_info']

    env = i['env']

    meta = i['meta']

    automation = i['automation']

    quiet = (env.get('MLC_QUIET', False) == 'yes')

    return {'return':0}

def postprocess(i):

    env = i['env']

    return {'return':0}
