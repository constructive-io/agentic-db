-- Deploy: schemas/agentic_db_memberships_private/tables/org_memberships_sprt/columns/actor_id/alterations/alt0000001658
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_private/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_memberships_private/tables/org_memberships_sprt/table
-- requires: schemas/agentic_db_memberships_private/tables/org_memberships_sprt/columns/actor_id/column


ALTER TABLE agentic_db_memberships_private.org_memberships_sprt 
  ALTER COLUMN actor_id SET NOT NULL;

