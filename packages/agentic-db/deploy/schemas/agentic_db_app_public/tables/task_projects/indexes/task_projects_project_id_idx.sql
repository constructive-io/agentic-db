-- Deploy: schemas/agentic_db_app_public/tables/task_projects/indexes/task_projects_project_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/task_projects/table
-- requires: schemas/agentic_db_app_public/tables/task_projects/columns/project_id/column
-- requires: schemas/agentic_db_app_public/tables/task_contacts/policies/auth_del_entity_membership/policy


CREATE INDEX task_projects_project_id_idx ON agentic_db_app_public.task_projects USING BTREE ( project_id );

