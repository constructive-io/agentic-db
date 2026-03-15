-- Revert: schemas/agent-os-1773547105079-c748b4c3-memberships-private/tables/org_memberships_sprt/columns/entity_id/alterations/alt0000001897


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-private".org_memberships_sprt 
  ALTER COLUMN entity_id DROP NOT NULL;


