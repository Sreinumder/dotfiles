return {
  '3rd/image.nvim',
  config = function()
    require('image').setup({
      integrations = {
        markdown = {
          resolve_image_path = function(document_path, image_path, fallback)
            -- document_path is the path to the file that contains the image
            -- image_path is the potentially relative path to the image. for
            -- markdown it's `![](this text)`
            return fallback(document_path, image_path)
          end,
        }
      }
    })
  end,
}
