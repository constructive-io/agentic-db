-- Deploy: schemas/agentic_db_app_public/tables/contact_notes/columns/id/alterations/alt0000002728
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_notes/table
-- requires: schemas/agentic_db_app_public/tables/contact_notes/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/goal_projects/policies/auth_del_entity_membership/policy


ALTER TABLE "agentic_db_app_public".contact_notes 
  ALTER COLUMN id SET NOT NULL;

