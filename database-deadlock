## Example

    BEGIN;
    UPDATE items SET counter = counter + 1 WHERE key = 'hello'; -- grabs lock on hello
    UPDATE items SET counter = counter + 1 WHERE key = 'world'; -- blocks waiting for world
    END;

    BEGIN
    UPDATE items SET counter = counter + 1 WHERE key = 'world'; -- grabs lock on world
    UPDATE items SET counter = counter + 1 WHERE key = 'hello';  -- blocks waiting for hello
    END;
