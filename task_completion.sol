// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract TaskManagement {
    // Struct to represent a Task
    struct Task {
        string description;
        bool completed;
        uint256 deadline;
    }

    // Mapping from task ID to Task
    mapping(uint256 => Task) public tasks;

    // Function to add or update a task
    function setTask(uint256 _taskId, string memory _description, bool _completed, uint256 _deadline) public {
        tasks[_taskId] = Task(_description, _completed, _deadline);
    }

    // Function to get the description of a task
    function getTaskDescription(uint256 _taskId) public view returns (string memory) {
        return tasks[_taskId].description;
    }

    // Function to check if a task is completed
    function isTaskCompleted(uint256 _taskId) public view returns (bool) {
        return tasks[_taskId].completed;
    }

    // Function to get the deadline of a task
    function getTaskDeadline(uint256 _taskId) public view returns (uint256) {
        return tasks[_taskId].deadline;
    }
}
