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

output "project_id" {
  value = module.project.project_id
}

output "sa_key" {
  value     = google_service_account_key.int_test.private_key
  sensitive = true
}

output "env_folder_ids" {
  value       = module.folders.ids
  description = "Folder IDs for environment folders"
}

output "vpcs" {
  value = { for env, vpc in module.vpc : env => {
    network_self_link  = vpc.network_self_link,
    subnets_self_links = vpc.subnets_self_links,
    project_id         = vpc.project_id
  } }
}

output "cluster_projects" {
  value = { for env, prj in module.cluster_project : env => {
    project_id = prj.project_id
  } }
}

output "fleet_projects" {
  value = { for env, prj in module.fleet_project : env => {
    project_id = prj.project_id
  } }
}
