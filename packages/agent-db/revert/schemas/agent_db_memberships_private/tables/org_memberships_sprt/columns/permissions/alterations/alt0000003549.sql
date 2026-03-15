-- Revert: schemas/agent_db_memberships_private/tables/org_memberships_sprt/columns/permissions/alterations/alt0000003549


ALTER TABLE "agent_db_memberships_private".org_memberships_sprt 
  ALTER COLUMN permissions DROP NOT NULL;


