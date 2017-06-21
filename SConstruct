from os import environ

env = Environment(ENV = {'TERM': environ['TERM']},
                  CPPFLAGS = ['-Dlinux',
                              '-DINTERFACE_CLI',
                              '-Dstricmp=strcasecmp'])

env.Program('asar', Glob('src/*.cpp'))
