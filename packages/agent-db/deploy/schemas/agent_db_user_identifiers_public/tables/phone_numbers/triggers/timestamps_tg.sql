-- Deploy: schemas/agent_db_user_identifiers_public/tables/phone_numbers/triggers/timestamps_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/phone_numbers/table


CREATE TRIGGER timestamps_tg
BEFORE INSERT OR UPDATE ON "agent_db_user_identifiers_public".phone_numbers
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps ( );

