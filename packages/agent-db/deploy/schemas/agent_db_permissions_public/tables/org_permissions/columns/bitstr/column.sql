-- Deploy: schemas/agent_db_permissions_public/tables/org_permissions/columns/bitstr/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_permissions_public/schema
-- requires: schemas/agent_db_permissions_public/tables/org_permissions/table


ALTER TABLE agent_db_permissions_public.org_permissions 
  ADD COLUMN bitstr bit(24);

