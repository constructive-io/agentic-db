-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_owner_grants/columns/updated_at/alterations/alt0000001706
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_owner_grants/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_owner_grants/columns/updated_at/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".app_owner_grants 
  ALTER COLUMN updated_at SET DEFAULT now();

