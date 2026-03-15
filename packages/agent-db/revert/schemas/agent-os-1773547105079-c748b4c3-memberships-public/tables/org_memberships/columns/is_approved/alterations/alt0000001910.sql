-- Revert: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_memberships/columns/is_approved/alterations/alt0000001910


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".org_memberships 
  ALTER COLUMN is_approved DROP NOT NULL;


