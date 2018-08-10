all: hypervisor mvm

.PHONY: hypervisor mvm clean distclean

hypervisor:
	@ echo "build hypervisor"
	@ cd hypervisor && make

mvm:
	@ echo "build minos userspace tools"
	@ cd mvm && make

clean:
	@ echo "clean all things"
	@ cd hypervisor && make clean
	@ cd mvm && make clean

distclean:
	@ echo "clean all things"
	@ cd hypervisor && make distclean
	@ cd mvm && make clean
