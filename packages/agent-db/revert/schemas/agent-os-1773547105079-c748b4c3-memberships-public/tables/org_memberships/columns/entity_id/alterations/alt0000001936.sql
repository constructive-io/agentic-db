-- Revert: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_memberships/columns/entity_id/alterations/alt0000001936


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".org_memberships 
  ALTER COLUMN entity_id DROP NOT NULL;


