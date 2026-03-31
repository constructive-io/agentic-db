-- Deploy: schemas/agentic_db_memberships_private/tables/app_memberships_sprt/columns/permissions/alterations/alt0000002200
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_private/schema
-- requires: schemas/agentic_db_memberships_private/tables/app_memberships_sprt/table
-- requires: schemas/agentic_db_memberships_private/tables/app_memberships_sprt/columns/permissions/column


ALTER TABLE agentic_db_memberships_private.app_memberships_sprt 
  ALTER COLUMN permissions SET NOT NULL;

