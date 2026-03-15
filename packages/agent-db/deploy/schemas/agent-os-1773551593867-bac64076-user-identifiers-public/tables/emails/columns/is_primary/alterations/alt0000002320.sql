-- Deploy: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/emails/columns/is_primary/alterations/alt0000002320
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/emails/table
-- requires: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/emails/columns/is_primary/column



ALTER TABLE "agent-os-1773551593867-bac64076-user-identifiers-public".emails 
    ALTER COLUMN is_primary SET DEFAULT false;

