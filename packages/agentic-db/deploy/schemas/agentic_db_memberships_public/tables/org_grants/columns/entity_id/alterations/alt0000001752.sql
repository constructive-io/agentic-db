-- Deploy: schemas/agentic_db_memberships_public/tables/org_grants/columns/entity_id/alterations/alt0000001752
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_grants/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_memberships_public/tables/org_grants/columns/entity_id/column


ALTER TABLE agentic_db_memberships_public.org_grants 
  ALTER COLUMN entity_id SET NOT NULL;

