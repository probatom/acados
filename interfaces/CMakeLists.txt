#
# Copyright 2019 Gianluca Frison, Dimitris Kouzoupis, Robin Verschueren,
# Andrea Zanelli, Niels van Duijkeren, Jonathan Frey, Tommaso Sartor,
# Branimir Novoselnik, Rien Quirynen, Rezart Qelibari, Dang Doan,
# Jonas Koenemann, Yutao Chen, Tobias Schöls, Jonas Schlagenhauf, Moritz Diehl
#
# This file is part of acados.
#
# The 2-Clause BSD License
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#
# 1. Redistributions of source code must retain the above copyright notice,
# this list of conditions and the following disclaimer.
#
# 2. Redistributions in binary form must reproduce the above copyright notice,
# this list of conditions and the following disclaimer in the documentation
# and/or other materials provided with the distribution.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
# ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
# LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
# INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
# CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
# ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.;
#


# MEX Template
if(ACADOS_OCTAVE_TEMPLATE)
        add_test(NAME octave_test_template_ocp_disc_dyn
                COMMAND "${CMAKE_COMMAND}" -E chdir ${PROJECT_SOURCE_DIR}/examples/acados_matlab_octave/test
                octave --no-gui --no-window-system ./run_test_template_ocp_disc_dyn.m)

        add_test(NAME octave_test_template_ocp_linear_dae
                COMMAND "${CMAKE_COMMAND}" -E chdir ${PROJECT_SOURCE_DIR}/examples/acados_matlab_octave/test
                octave --no-gui --no-window-system ./run_test_template_ocp_linear_dae.m)

        add_test(NAME octave_test_template_ocp_pendulum_auto
                COMMAND "${CMAKE_COMMAND}" -E chdir ${PROJECT_SOURCE_DIR}/examples/acados_matlab_octave/test
                octave --no-gui --no-window-system ./run_test_template_ocp_pendulum_auto.m)

        add_test(NAME octave_test_template_ocp_pendulum_exact_hess
                COMMAND "${CMAKE_COMMAND}" -E chdir ${PROJECT_SOURCE_DIR}/examples/acados_matlab_octave/test
                octave --no-gui --no-window-system ./run_test_template_ocp_pendulum_exact_hess.m)

        add_test(NAME octave_test_template_ocp_pendulum_ext_cost
                COMMAND "${CMAKE_COMMAND}" -E chdir ${PROJECT_SOURCE_DIR}/examples/acados_matlab_octave/test
                octave --no-gui --no-window-system ./run_test_template_ocp_pendulum_ext_cost.m)

        add_test(NAME octave_test_template_ocp_pendulum_gnsf
                COMMAND "${CMAKE_COMMAND}" -E chdir ${PROJECT_SOURCE_DIR}/examples/acados_matlab_octave/test
                octave --no-gui --no-window-system ./run_test_template_ocp_pendulum_gnsf.m)

        add_test(NAME octave_test_template_ocp_pendulum_nls
                COMMAND "${CMAKE_COMMAND}" -E chdir ${PROJECT_SOURCE_DIR}/examples/acados_matlab_octave/test
                octave --no-gui --no-window-system ./run_test_template_ocp_pendulum_nls.m)

        add_test(NAME octave_test_template_mhe_lorentz
                COMMAND "${CMAKE_COMMAND}" -E chdir ${PROJECT_SOURCE_DIR}/examples/acados_matlab_octave/test
                octave --no-gui --no-window-system ./test_template_mhe_lorentz.m)

        add_test(NAME octave_test_target_selector
                COMMAND "${CMAKE_COMMAND}" -E chdir ${PROJECT_SOURCE_DIR}/examples/acados_matlab_octave/test
                octave --no-gui --no-window-system ./test_target_selector.m)

        add_test(NAME octave_test_generic_ext_cost_disc_dyn
                COMMAND "${CMAKE_COMMAND}" -E chdir ${PROJECT_SOURCE_DIR}/examples/acados_matlab_octave/generic_dyn_disc
                octave --no-gui --no-window-system ./run_generic_disc_dyn_example.m)
endif()


# MATLAB / OCTAVE
if(ACADOS_MATLAB OR ACADOS_OCTAVE)
        add_test(NAME octave_test_dim_check
                COMMAND "${CMAKE_COMMAND}" -E chdir ${PROJECT_SOURCE_DIR}/examples/acados_matlab_octave/test
                octave --no-gui --no-window-system ./run_test_dim_check.m)

        # SIM
        add_test(NAME octave_test_sim_forw
                COMMAND "${CMAKE_COMMAND}" -E chdir ${PROJECT_SOURCE_DIR}/examples/acados_matlab_octave/test
                octave --no-gui --no-window-system ./run_test_sim_forw.m)

        add_test(NAME octave_test_sim_adj
                COMMAND "${CMAKE_COMMAND}" -E chdir ${PROJECT_SOURCE_DIR}/examples/acados_matlab_octave/test
                octave --no-gui --no-window-system ./run_test_sim_adj.m)

        add_test(NAME octave_test_sim_hess
                COMMAND "${CMAKE_COMMAND}" -E chdir ${PROJECT_SOURCE_DIR}/examples/acados_matlab_octave/test
                octave --no-gui --no-window-system ./run_test_sim_hess.m)

        add_test(NAME octave_test_sim_dae
                COMMAND "${CMAKE_COMMAND}" -E chdir ${PROJECT_SOURCE_DIR}/examples/acados_matlab_octave/test
                octave --no-gui --no-window-system ./run_test_sim_dae.m)

        # OCP
        add_test(NAME octave_test_ocp_pendulum
                COMMAND "${CMAKE_COMMAND}" -E chdir ${PROJECT_SOURCE_DIR}/examples/acados_matlab_octave/test
                octave --no-gui --no-window-system ./run_test_ocp_pendulum.m)
        add_test(NAME octave_test_ocp_wtnx6
                COMMAND "${CMAKE_COMMAND}" -E chdir ${PROJECT_SOURCE_DIR}/examples/acados_matlab_octave/test
                octave --no-gui --no-window-system ./run_test_ocp_wtnx6.m)
        add_test(NAME octave_test_ocp_pendulum_dae
                COMMAND "${CMAKE_COMMAND}" -E chdir ${PROJECT_SOURCE_DIR}/examples/acados_matlab_octave/test
                octave --no-gui --no-window-system ./run_test_ocp_pendulum_dae.m)
        add_test(NAME octave_test_ocp_mass_spring
                COMMAND "${CMAKE_COMMAND}" -E chdir ${PROJECT_SOURCE_DIR}/examples/acados_matlab_octave/test
                octave --no-gui --no-window-system ./run_test_ocp_mass_spring.m)
        add_test(NAME octave_test_ocp_simple_dae
                COMMAND "${CMAKE_COMMAND}" -E chdir ${PROJECT_SOURCE_DIR}/examples/acados_matlab_octave/test
                octave --no-gui --no-window-system ./run_test_ocp_simple_dae.m)

        # OSQP
        if(ACADOS_WITH_OSQP)
                add_test(NAME octave_test_OSQP
                        COMMAND "${CMAKE_COMMAND}" -E chdir ${PROJECT_SOURCE_DIR}/examples/acados_matlab_octave/test
                        octave --no-gui --no-window-system ./test_ocp_OSQP.m)
        endif()

        # qpDUNES
        if(ACADOS_WITH_QPDUNES)
        add_test(NAME octave_test_qpDUNES
                COMMAND "${CMAKE_COMMAND}" -E chdir ${PROJECT_SOURCE_DIR}/examples/acados_matlab_octave/test
                octave --no-gui --no-window-system ./test_ocp_qpdunes.m)
        endif()
endif()



### PYTHON ###
if(ACADOS_PYTHON)
add_test(NAME python_test_ocp
        COMMAND "${CMAKE_COMMAND}" -E chdir ${PROJECT_SOURCE_DIR}/examples/acados_python/tests
        python main_test.py)
add_test(NAME python_pendulum_ocp_example
        COMMAND "${CMAKE_COMMAND}" -E chdir ${PROJECT_SOURCE_DIR}/examples/acados_python/getting_started/ocp
        python minimal_example_ocp.py)
add_test(NAME python_pendulum_ocp_example_reuse_code
        COMMAND "${CMAKE_COMMAND}" -E chdir ${PROJECT_SOURCE_DIR}/examples/acados_python/getting_started/ocp
        python minimal_example_ocp_reuse_code.py)
add_test(NAME python_nonuniform_discretization_ocp_example
        COMMAND "${CMAKE_COMMAND}" -E chdir ${PROJECT_SOURCE_DIR}/examples/acados_python/getting_started/ocp
        python nonuniform_discretization_example.py)
add_test(NAME python_rti_loop_ocp_example
        COMMAND "${CMAKE_COMMAND}" -E chdir ${PROJECT_SOURCE_DIR}/examples/acados_python/getting_started/ocp
        python example_sqp_rti_loop.py)

add_test(NAME python_chain_ocp
        COMMAND "${CMAKE_COMMAND}" -E chdir ${PROJECT_SOURCE_DIR}/examples/acados_python/chain_mass
        python main.py)

add_test(NAME python_chain_sim
        COMMAND "${CMAKE_COMMAND}" -E chdir ${PROJECT_SOURCE_DIR}/examples/acados_python/chain_mass
        python minimal_example_sim.py)

# qpDUNES example
if(ACADOS_WITH_QPDUNES)
        add_test(NAME python_qpDUNES_test
                COMMAND "${CMAKE_COMMAND}" -E chdir ${PROJECT_SOURCE_DIR}/examples/acados_python/getting_started/ocp
                python example_sqp_qpDUNES.py)
endif()

# OSQP test
if(ACADOS_WITH_OSQP)
        add_test(NAME python_OSQP_test
                COMMAND "${CMAKE_COMMAND}" -E chdir ${PROJECT_SOURCE_DIR}/examples/acados_python/tests
                python test_osqp.py)
endif()

# MHE examples
add_test(NAME python_pendulum_mhe_example_minimal
        COMMAND "${CMAKE_COMMAND}" -E chdir ${PROJECT_SOURCE_DIR}/examples/acados_python/getting_started/mhe
        python minimal_example_mhe.py)
add_test(NAME python_pendulum_mhe_example_noisy_param
        COMMAND "${CMAKE_COMMAND}" -E chdir ${PROJECT_SOURCE_DIR}/examples/acados_python/getting_started/mhe
        python minimal_example_mhe_with_noisy_param.py)
add_test(NAME python_pendulum_mhe_example_param
        COMMAND "${CMAKE_COMMAND}" -E chdir ${PROJECT_SOURCE_DIR}/examples/acados_python/getting_started/mhe
        python minimal_example_mhe_with_param.py)
add_test(NAME python_pendulum_mhe_ocp_closed_loop_example
        COMMAND "${CMAKE_COMMAND}" -E chdir ${PROJECT_SOURCE_DIR}/examples/acados_python/getting_started/mhe
        python closed_loop_mhe_ocp.py)

add_test(NAME python_pendulum_ocp_cost_example
        COMMAND "${CMAKE_COMMAND}" -E chdir ${PROJECT_SOURCE_DIR}/examples/acados_python/getting_started/ocp
        python ocp_example_cost_formulations.py)
add_test(NAME python_pendulum_sim_example
        COMMAND "${CMAKE_COMMAND}" -E chdir ${PROJECT_SOURCE_DIR}/examples/acados_python/getting_started/sim
        python minimal_example_sim.py)
add_test(NAME python_pendulum_ext_sim_example
        COMMAND "${CMAKE_COMMAND}" -E chdir ${PROJECT_SOURCE_DIR}/examples/acados_python/getting_started/sim
        python extensive_example_sim.py)
add_test(NAME python_pendulum_closed_loop_example
        COMMAND "${CMAKE_COMMAND}" -E chdir ${PROJECT_SOURCE_DIR}/examples/acados_python/getting_started
        python minimal_example_closed_loop.py)
add_test(NAME python_pendulum_ocp_time_optimal
        COMMAND "${CMAKE_COMMAND}" -E chdir ${PROJECT_SOURCE_DIR}/examples/acados_python/crane
        python time_optimal_example.py)

# example_ocp_dynamics_formulations all versions
add_test(NAME python_pendulum_ocp_IRK
        COMMAND "${CMAKE_COMMAND}" -E chdir ${PROJECT_SOURCE_DIR}/examples/acados_python/getting_started/ocp
        python example_ocp_dynamics_formulations.py --INTEGRATOR_TYPE=IRK)
add_test(NAME python_pendulum_ocp_ERK
        COMMAND "${CMAKE_COMMAND}" -E chdir ${PROJECT_SOURCE_DIR}/examples/acados_python/getting_started/ocp
        python example_ocp_dynamics_formulations.py --INTEGRATOR_TYPE=ERK)
add_test(NAME python_pendulum_ocp_DISCRETE
        COMMAND "${CMAKE_COMMAND}" -E chdir ${PROJECT_SOURCE_DIR}/examples/acados_python/getting_started/ocp
        python example_ocp_dynamics_formulations.py --INTEGRATOR_TYPE=DISCRETE)
add_test(NAME python_pendulum_ocp_GNSF
        COMMAND "${CMAKE_COMMAND}" -E chdir ${PROJECT_SOURCE_DIR}/examples/acados_python/getting_started/ocp
        python example_ocp_dynamics_formulations.py --INTEGRATOR_TYPE=GNSF)

add_test(NAME python_pendulum_soft_constraints_example
        COMMAND "${CMAKE_COMMAND}" -E chdir ${PROJECT_SOURCE_DIR}/examples/acados_python/tests
        python soft_constraint_test.py)
add_test(NAME python_pendulum_parametric_nonlinear_constraint_h_test
        COMMAND "${CMAKE_COMMAND}" -E chdir ${PROJECT_SOURCE_DIR}/examples/acados_python/tests
        python test_parametric_nonlinear_constraint_h.py)
add_test(NAME python_test_sim_dae
        COMMAND "${CMAKE_COMMAND}" -E chdir ${PROJECT_SOURCE_DIR}/examples/acados_python/tests
        python test_sim_dae.py)

add_test(NAME python_pmsm_example
        COMMAND "${CMAKE_COMMAND}" -E chdir ${PROJECT_SOURCE_DIR}/examples/acados_python/pmsm_example
        python main.py)
add_test(NAME python_race_cars
        COMMAND "${CMAKE_COMMAND}" -E chdir ${PROJECT_SOURCE_DIR}/examples/acados_python/race_cars
        python main.py)
add_test(NAME python_rsm_example
        COMMAND "${CMAKE_COMMAND}" -E chdir ${PROJECT_SOURCE_DIR}/examples/acados_python/rsm_example
        python main.py)
endif()
