from os import environ


TARGET = ARGUMENTS.get('TARGET', 'cli')


flags = ['-O3', '-march=native', '-flto']


env = Environment(ENV       = {'TERM': environ['TERM']},
                  CXX       = 'g++',

                  CCFLAGS   = ['-Wall', '-Wextra', '-Werror', '-Wno-unused-result',
                               '-Wno-uninitialized', '-Wno-unused-parameter'] + flags,
                  CPPFLAGS  = ['-Dstricmp=strcasecmp', '-Dlinux', '-DRELEASE'],
                  CXXFLAGS  = ['-std=c++11', '-fno-rtti'],
                  LINKFLAGS = flags)


if TARGET == 'cli':
    cli = env.Clone()
    cli.Append(CPPFLAGS = ['-DINTERFACE_CLI'])
    cli.Program('asar', Glob('src/*.cpp'))

elif TARGET == 'lib':
    lib = env.Clone()
    lib.Append(CXXFLAGS = ['-fvisibility=hidden', '-fvisibility-inlines-hidden'],
               CPPFLAGS = ['-DINTERFACE_LIB'])
    lib.Library('asar', Glob('src/*.cpp'))
