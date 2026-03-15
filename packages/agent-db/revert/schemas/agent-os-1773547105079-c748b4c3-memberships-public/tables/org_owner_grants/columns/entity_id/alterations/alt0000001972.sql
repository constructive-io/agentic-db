-- Revert: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_owner_grants/columns/entity_id/alterations/alt0000001972


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".org_owner_grants 
  ALTER COLUMN entity_id DROP NOT NULL;


