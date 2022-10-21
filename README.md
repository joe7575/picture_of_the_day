# Picture Of The Day

## Usage

This section goes over using the scripts & adding new images.

### Changing the picture

`dice_picture.py` has to be called once a day and will require a server restart.

### Adding pictures

To include new images, they must be in **png** format, be at least 256 pixels in width and height & be placed into the store folder.

In order for the images to display, a new array must be created in [pictures.json]() including the file's name, title, author & position. Below is an example of an image in the array:

```json
{
    // below adds an image from the store folder called image-file-name.png
    "image-file-name": {
        // title
        "title": "Image",
        
        // author
        "owner": "",
        
        // position
        "pos": "x,y,z",
    }
}
```

## Miscellaneous

<details>
<summary>
Dependancies
</summary>

* There are no dependancies listed.

</details>

<details>
<summary>
History
</summary>

* <details><summary>October 20, 2022</summary>Move source to `src` & update project information.</details>

* <details><summary>October 1, 2022</summary>Initial version.</details>

</details>
