-- Revert: schemas/agent-os-1773547105079-c748b4c3-memberships-private/tables/org_memberships_sprt/columns/is_owner/alterations/alt0000001886


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-private".org_memberships_sprt 
  ALTER COLUMN is_owner DROP NOT NULL;


