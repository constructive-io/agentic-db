-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_membership_defaults/triggers/app_membership_defaults_insert_trg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_membership_defaults/table


CREATE TRIGGER app_membership_defaults_insert_trg
BEFORE INSERT ON "agent-os-1773547105079-c748b4c3-memberships-public".app_membership_defaults
FOR EACH ROW
EXECUTE PROCEDURE utils.ensure_singleton ( );

