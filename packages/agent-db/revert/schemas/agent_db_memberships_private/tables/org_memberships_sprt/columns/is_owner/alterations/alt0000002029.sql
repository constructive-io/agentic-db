-- Revert: schemas/agent_db_memberships_private/tables/org_memberships_sprt/columns/is_owner/alterations/alt0000002029


ALTER TABLE "agent_db_memberships_private".org_memberships_sprt 
  ALTER COLUMN is_owner DROP NOT NULL;


