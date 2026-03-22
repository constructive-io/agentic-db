-- Deploy: schemas/agentic_db_memberships_private/tables/app_memberships_sprt/columns/is_owner/alterations/alt0000004749
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_private/schema
-- requires: schemas/agentic_db_memberships_private/tables/app_memberships_sprt/table
-- requires: schemas/agentic_db_memberships_private/tables/app_memberships_sprt/columns/is_owner/column


ALTER TABLE agentic_db_memberships_private.app_memberships_sprt 
  ALTER COLUMN is_owner SET NOT NULL;

