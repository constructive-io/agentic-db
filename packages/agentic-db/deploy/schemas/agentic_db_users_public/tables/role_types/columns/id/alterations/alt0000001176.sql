-- Deploy: schemas/agentic_db_users_public/tables/role_types/columns/id/alterations/alt0000001176
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_users_public/schema
-- requires: schemas/agentic_db_users_public/tables/role_types/table
-- requires: schemas/agentic_db_users_public/tables/role_types/columns/id/column


ALTER TABLE agentic_db_users_public.role_types 
  ALTER COLUMN id SET NOT NULL;

