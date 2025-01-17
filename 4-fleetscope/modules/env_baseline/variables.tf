/**
 * Copyright 2024 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

variable "env" {
  description = "The environment to prepare (ex. development)"
  type        = string
}

variable "fleet_project_id" {
  description = "The fleet project ID"
  type        = string
}

variable "scope_id" {
  description = "The fleet scope ID"
  type        = string
}

variable "namespace_id" {
  description = "The fleet namespace ID"
  type        = string
}

variable "cluster_membership_ids" {
  description = "The membership IDs in the scope"
  type        = list(string)
}
