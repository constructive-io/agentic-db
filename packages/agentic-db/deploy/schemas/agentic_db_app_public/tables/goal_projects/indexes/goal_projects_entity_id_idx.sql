-- Deploy: schemas/agentic_db_app_public/tables/goal_projects/indexes/goal_projects_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goal_projects/table
-- requires: schemas/agentic_db_app_public/tables/goal_projects/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/task_projects/policies/auth_del_entity_membership/policy


CREATE INDEX goal_projects_entity_id_idx ON "agentic_db_app_public".goal_projects USING BTREE ( entity_id );

